Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AE33C22
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656770812;
	h=To:Subject:From:Message-Id:Date;
	bh=zLk+7Nw5xtcRNrAy3ftkJjGVYSUSGwD/146jKJWSW48=;
	b=IlrDbnebWZzsK5A80R5MS3RguDcqXgOsAaO7iZ65NeMYqRfHhHR+whcoEmRjMMpL
	1/D8lOYuyMYhNt9l7d+ZpjCQxin9FXOMAlM0pCE3svyIUKjSe2itg+msOLwPxlv3c07
	1s7/wdKaFcBX6DktWt2UYgoZJQPMBiowswtlvfDo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656770812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zLk+7Nw5xtcRNrAy3ftkJjGVYSUSGwD/146jKJWSW48=;
	b=WunkdI7QFx+yO3HL45jrv+EOKzu9IkbLwRA280DdoF07cIveS5ueMx4szX5lvQSB
	TByDwqv/RAbluqasaS5ZqTfk4zTFOvY2kWL/YTDjgZBS1Tez/HYq5oPiBx1fa6WPBhn
	xkqwYCCLv6NJP6DB6GheDTlN1Lju6qfq9EXEOOJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf3c5997-97b83a44-489e-4fee-8417-4d5db5817d04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bec6d935398fff86a1e403b3260f0e1ad70ec6c399abc26c47cfc7ea6b5fb4c9
Date: Sat, 2 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656770812
