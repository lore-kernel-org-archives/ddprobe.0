Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C683237
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 15:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648395298;
	h=To:Subject:From:Message-Id:Date;
	bh=KwCN4n0GomR1z9g6h+0pb78OMhH9k0A5dGKupWDuPYo=;
	b=iVQv7UBIou70uK2aeaGj7Unc2Suqm0XkYGRTALi7Gbl5AsLnwRt/mK0AKgK4xm8s
	2/UZjFbbeVJD/7OWtG76o3eLovtmoftt44GLKDffuiRHlDVKD/0gxgrHGxidMOg0k9L
	hrv55lZ8RM9V77Ic4PC+KwMyAaT6qfgymrWZhEjk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648395298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KwCN4n0GomR1z9g6h+0pb78OMhH9k0A5dGKupWDuPYo=;
	b=HaT3ycwJenpO91H9efHAfVtXj9Bczsw/SYnSwsFsdSWWwl99q9KbJyAtIRrfjah4
	EpCLzXnFKnDo2vKvZhlKPgD1O6lXFj+iuFB6VSXx8OVTUiE5s9vvlOGIri55F1NCF7u
	o/YkUjrbyEdUnuCAumiQBGS1XZktZP2DvoBPVV2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcc04260f-e0f329f5-af4c-4b9b-9c38-0073c1b77e40-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75f725cebc24d4f6a1c80f6039fa4e2d5a11bdaeea7774693e22600ffb7e6ff5
Date: Sun, 27 Mar 2022 15:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648395298
