Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D787E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 11:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650887518;
	h=To:Subject:From:Message-Id:Date;
	bh=HmF269ssTAK4tvkuT04ZxlMk25j167wgYg6MRtDoKCY=;
	b=dG3wgdb+vwHrb0ODBNjZ1bX/mE1RQ7i4N4VdIep21cCxz269OvCdDOXFL54gaDLp
	m4Q1lP3zuF9Sv5nOB03BChxmv4datLhxqS1QiTp1F5+cFdIc9pTIlhNlWdacgvEvxNM
	N7GwS/TAd1VgFkLOi2KNdnX+wgBxO0+p7xy5HMZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650887518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HmF269ssTAK4tvkuT04ZxlMk25j167wgYg6MRtDoKCY=;
	b=D5zPsBjknqZ8joEOQ+ECv4VX2LJ2vmn9ioCujRoBYcy70XLcxMckXfxlAU7gl+BS
	rDXbnMQdS1/t+IBEoRESWTgPwQn+Ha4kWpmC0bMsmePbPxK1T9HmP8rdK+rsBke/tAa
	Ty9L0QtKpFoNQHOz+c+so5ds5wp2lR7SAyXV+U8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018060906831-811e70b0-82a1-4429-a57f-321807ebb76d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6cfdbb8741cf4c7c19dfa33283f8d199c0dc17f859ac50c6c9804b2025296f4
Date: Mon, 25 Apr 2022 11:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650887518
