Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B55E4A19
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657807012;
	h=To:Subject:From:Message-Id:Date;
	bh=xoYHc0lhl//NQfjiD3mO/BHwFPIBxiLkb9r93wnHclM=;
	b=bcGEamtpA4PqZlyvt2DL8WEseEOOL4tv87odmwdAaTTFODeopP+rUbLjmfhUKKNF
	atDGRjX5f+q12Gpag9pe+cOAdeGo3TXU7JbY9db1s7HctytIVdj/BxHrf/wFP6ibs7r
	kGQrklnEapLJiGZF87t5AqRPzL+/rSGAbwhPxKLg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657807012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xoYHc0lhl//NQfjiD3mO/BHwFPIBxiLkb9r93wnHclM=;
	b=j/TVEBJZtCSQ7Yzd1RlYsYJVEZa6t9Ddm+HtUED6+m/fAn3zNaB2bFRUrRrMMVfE
	vBE1hdaB41gd3ZFT+z/gBV4MKdqolBH7hKAYWXiWg7k3yEOqqXG7KZx4473fTSAclYP
	LNpjD/2ODEn3sh4AdbrsKsBWca+7cK+Zz6BJHSvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fcff81d1-0d5cd891-8095-4b45-aacb-ae585904a353-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 747790054094713e8fcaa9df66dc0c2bcd0a82cac28a2ae6e65a5252bdc2a7b3
Date: Thu, 14 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657807012
