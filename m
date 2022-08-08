Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9378B3D88
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659981052;
	h=To:Subject:From:Message-Id:Date;
	bh=DsM+THwlSb6s1a5pWEwxvDc5ME2vi+pMR3j+qsIDnE0=;
	b=FXgph+PA8b3QHxQnfB4zf13hx7zncS+j4YdNcwX+fuxstuwZfW9oAD/6ySxD0gEF
	liwQ393T8O6BlmACjuNaLwbquYTdHiZEZZBumUt0jPKYeQmIRtiCdS9QOTZRbZjbtmB
	nmqyGraCQmiiVd/YUNLbgrbyzXgiIHC+SUW9arpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659981052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DsM+THwlSb6s1a5pWEwxvDc5ME2vi+pMR3j+qsIDnE0=;
	b=OocerhJ2p9bA9eGkqHOxQGWSqSqn6Yd/0qGKkKfXCsI6NIIWec1u+vbRCALooQZp
	g+w7g5Jy/r6aD6IojNO+i4g2EdMUleSm9s9GAw9Ykf3tL11ptZDh0Y+oQF8/iv0SGwI
	zKTYJ0PCgMUndBBhq5hRIqHzcaEcVs/LVWdveVGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e94bae6-cffec463-cbf6-490b-9d9a-24a57eb55d6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69cc9068594c68f1859b530fecf11cbbeca259e0a1b8f14908f6e3824a0914f8
Date: Mon, 8 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659981052
