Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0B47C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 20:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648843378;
	h=To:Subject:From:Message-Id:Date;
	bh=BEleqTqgPlyz1IptFXf7i5pKFiY1PX/sN6KgLr5VRIA=;
	b=eueSBVNYKiChJC5z15r2RpGjJekR9QnjhYbRfeeOiHsE1MkAhhDlTP5Gy6K/npSp
	H7zVtEDSj5F+EmqbBk5OYQpUXbaY5ZICH59OVwucd2leFyxfBSKM8oTW0gn12G0Xpsb
	zgfBIuY338vjWDtf6+k+ozHmDoqLUnQUFAHY/vfM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648843378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BEleqTqgPlyz1IptFXf7i5pKFiY1PX/sN6KgLr5VRIA=;
	b=PyK0wuRtAOJn2DMnVmkXMoZWI4fGPh67FlEYuwjS/xZOZz4wrCivVmJROvdDrVWY
	KYKDHbCKXjXT8lMTWND/ppdqpB8S8WPG7QkFmP8cfeCU6UFJTqs1MVeBaZS1YzKtfTZ
	seznerufiDxS/lzygwp2fmbV+k8pIOg/ZLeaBJnA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe6b94e77-32aa7868-c79d-4d63-9132-2de63e9ad68c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c3688a895f9f5a5e2e0c100371bdfe4010a683afc56e1d9cbeccdabde5924b7
Date: Fri, 1 Apr 2022 20:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648843378
