Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151227C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 05:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657000012;
	h=To:Subject:From:Message-Id:Date;
	bh=m4fObWJ08Hk6Fyzim9Ozmwpkq+tB0zpDo7ghcofMuo0=;
	b=lQKWjxZC/7W1NVry+CKFcbOdBgDV1OsgvMtnC3uKDSIEeuoFGqjwcjd7JBsIYZbz
	uoXwsUVZdf4gr9aQTSmc2meEo8+eRkbxb/XkX4RWAAiIsKLVCUkNBZZdS+684atyXKt
	GpwiiHMclXIU+5rLkvMulX3VWINvPseOezCkJ0Gg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657000012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m4fObWJ08Hk6Fyzim9Ozmwpkq+tB0zpDo7ghcofMuo0=;
	b=goOp4XRg19Wz3mbQx07QKJBFz+AwZrwIdiIwn0WIttVvMwmFPv2gJeP9d0htkjQG
	57IMi7fZwfvp7Z/H5khuZxJ7WRcIRdroMb970+m4nZgC4z+OYxgRO6j3wnv+XPfd2oZ
	2NGNGvUQm3VovxHAv3f89unPLwjSMLNpF2cb5oWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cce5a9ee-b6d2746b-4b3d-423f-b6fc-6aa0a8d51801-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46ce30c96ff7f6835ac5d4309eca729ba0a75efdb0653c08456ce0753510b3eb
Date: Tue, 5 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657000012
