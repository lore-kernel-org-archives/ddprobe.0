Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2723F7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657879012;
	h=To:Subject:From:Message-Id:Date;
	bh=gpocjd3jEZ6hqz7P6HJIaZzSzdcXGDmKIInqOCtNM8o=;
	b=XQyyhhUQrTjV80aiG1GdpS0cfrP1Frmrj9V0LjHUHu+fezYMvfReqYyelXfhrm6P
	fOFDWL+oZNYiJ3xLDnmpOoSL/ozib1Zomhm8Hoapjkm+7hFVyqv0Cph/zhX+p2//MI0
	ySmapP3/6c822wo8nQd3A+fixkKYDKCun3eSQpGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657879012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gpocjd3jEZ6hqz7P6HJIaZzSzdcXGDmKIInqOCtNM8o=;
	b=RvjtIxfvKhZbcIvaqz0ovl1c7BXefVwdxvV+EKTx7B+QiAChaVv5apZOW98B/qwV
	ifnfzubNhPsyTBg/r2y0E+sm4qIf6Yj+clPRtNcZsgICfE9br2rdlngLq3OzD7Ti6jQ
	fFofSRzlewnWNrgppww1NJjgBCbiMcjRUdc5bGUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182014a23b7-ad7bc15d-3bf7-49d5-9475-5c862e1c21c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d306f42c9342d45ad57c48a3f96bb06ce19cb3e9c3d6f29c29703c4e707f5f35
Date: Fri, 15 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657879012
