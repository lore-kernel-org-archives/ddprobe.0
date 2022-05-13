Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE5D33F4
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 16:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652460899;
	h=To:Subject:From:Message-Id:Date;
	bh=5D+/SyKlc8STeyNM+IlS/XR/IrDsHCtFOInhkEUDKDw=;
	b=DWoAQE0F9vt441KQqb6NygLoPSiN07Au/Tt4cetGcCHqQsWF/6zPXQ4xLcKUTYg0
	qx+RiNbDC6acyMxM8cTEUn3zxI4ywJTIE2+hd79FTAc5l8GpiJMtM5c1vhX+xiT9FaH
	la+cMFIuZ+h/lpByoz1kCM4ismGNpMithVY5VdD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652460899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5D+/SyKlc8STeyNM+IlS/XR/IrDsHCtFOInhkEUDKDw=;
	b=i7gptlq7ubovESbNnp4xy6m2Vf0MGHakGHr2gZ3MfDpyPQDM64W1apyU+Fyaobcb
	mSi3Lj7jNM4D6mJ3pX/zlHw+5Y3M6JEjRHDxfghCGeS8aw3qSUbCVtd8jn7XeU8UQFO
	ossxaJ17oNX80OL0kuQNm4lWGDlX+wpwBkFWMPRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be584c0c-f2eb1ed2-eb56-45b8-9d9f-27021f8e0378-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 898b7cfffee8d01108ebd99317c8559664658d86badaeb13de8f0c0eb80adbaa
Date: Fri, 13 May 2022 16:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652460899
