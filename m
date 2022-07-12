Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EF31FC1
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 20:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657658812;
	h=To:Subject:From:Message-Id:Date;
	bh=i+c6JU+bY86p6Yvl708zfZySqrP02KSU41URtmlQ8uM=;
	b=QnvwMauWoNI8MrROJKmGj4QQB6rzKimtNIuRoHjkTNrB8QS5AzLz26E/HRN5NlX4
	q3SwITN0ZkYNpTO3r5c7oR3a/wjqXzRxTVM0whb2cwIaz6mWYwgJuFuWYkZpj4KikWL
	tztEkPHL7RBKtx25SHV4Y824YuTLsgFbwWhvHrRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657658812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i+c6JU+bY86p6Yvl708zfZySqrP02KSU41URtmlQ8uM=;
	b=TM58jtR2lGtSIQxpyQr9+WO1VBHGSmZeGMGMSnEYJNNiqFrb4BU5Z6XxC/p1YplG
	jI/NQz5YAbIj5V3xSsQXpaJy1sOaEDTDcYamcdp7Jueu0+MJRKdFGP82f4n0d9on5OV
	Z4b5dUV/PXRt4ff3y+AdOaxrYaFBf4ViNA1penls=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f42a27c8-5eccb8a4-5a12-42d8-9b1e-44f519007827-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ccf32acceecd7477a041c0263dd2b3b4e3b86fdae86fa9ccc3bad793a016ee5
Date: Tue, 12 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657658812
