Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA87C23CD
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660909853;
	h=To:Subject:From:Message-Id:Date;
	bh=gBnXWcvcPrGGmBFWwC8IdHElAmA+HRrk5iEw+Gsrvy4=;
	b=F7mWpEIgDDkQu3OwqsdY9UYCYGXlxzMHRTKF6ZWcB0gvh2W2WMvH6y3Eu7plXu2a
	UG5IPs4JNaU79jO07C5CttympWFYMpaFntwAVMKxEMvl5Ercb2wfHvOHZcQ+YTMY8in
	te/IOh/mnhIWOA/NGuVrxb8SGxJlUCcfuguMuhGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660909853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gBnXWcvcPrGGmBFWwC8IdHElAmA+HRrk5iEw+Gsrvy4=;
	b=fA6J6qcUQhBNHYHP01eqF3QSpsv8Qldbjtqn8jNhLWnDbaW5nXLocyJXFujTihm0
	3gAP6FDVbgA49wjZmZdZY4ZKhCJRghbbYolQV1kxUZjs0VFUindM1iJNBISN7s339gC
	4bUyGAXKxCIcPSFjVMpCOknOTCAn2BtU/ZFI5ELU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b5f1179c-7f4cafd1-9c9b-458a-a320-e8f08a46debf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 657e7fe4a63d3ab68d6a31ad7306bb9e7a387cf08b3d79d652ebb3a1df38339f
Date: Fri, 19 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660909852
