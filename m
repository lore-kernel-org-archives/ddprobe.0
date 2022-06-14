Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356777A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 15:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655219999;
	h=To:Subject:From:Message-Id:Date;
	bh=pj/YSzTVnvTnfzhWaOBtjQhxomZWiYNOxyAhUX2tlkc=;
	b=ZG6/xYIavJWvgdrPKgVMluRe2M7e/JS7g8OW3eCg3QiF4UFY6OzBT4SnScq9pIJT
	Gv/WEmkSN1B31Y7vsM/ocD92JS5xpyJvBUAhRehhR1czIxll4ZAV55uRJPfzuBXmfqI
	dWAq+gDRH9mRO/Q1UzahSuSV1JvyheFo2NUWnVLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655219999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pj/YSzTVnvTnfzhWaOBtjQhxomZWiYNOxyAhUX2tlkc=;
	b=O5Mn6d2Z4ISmnb630RYRapBsHshdzxLk/2ljhho0OVHAEdMhbDDTsTvx45WTikgk
	iRCkoIRlfSmrxsciJ16QUPHM0f0L7oGfp9ZfmYwJAGwu5eI0zZUIY3jIDoLfSoTWU+g
	cGEHV1tKLOwsy6dL12elPSxaysAEO046aQyI6uhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018162ccd20b-23e447fc-6a26-40e6-9b51-af38ad54ba56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5de7c0754f16e6dffb62179a3af1fd7840e6f67883abf207172376f7cb979663
Date: Tue, 14 Jun 2022 15:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655219999
