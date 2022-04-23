Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BFA17C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 18:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650738778;
	h=To:Subject:From:Message-Id:Date;
	bh=m/fTVIz59eY3A+YlAGfkkuBpWf04Jv0/zKlsveyxLCE=;
	b=jQckczOVBJtu1cpL3dXLOrwibqmmeFmx1X1B+L/NUelcz32Jfx/bFLrPmKWd0uJA
	YjvD5CXqr1pq2i2cieWPprCknzW2Wq79YBZADVbuc5+xzrmfWL1Bd3VU50RGLrzyw1E
	CH6cnz+TMCvrpUbPDopxvWZr+PB/QYYSsVZDNe98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650738778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m/fTVIz59eY3A+YlAGfkkuBpWf04Jv0/zKlsveyxLCE=;
	b=hhRASpP8t2Sk6KMyC8z0LbW7Gg0pomBPmX8DasDreeoDXp/w7SHtVO87xwfJF6Z5
	HSZwbFMB/cUSEypru0Q/8ocmMqzhPPBrz6Qdy5scBgdlxG1ZbYbTCNk53yJgxV4yKwB
	uVDskHqXNI40W63Nb9mloxVKAtTbjy5+aTzhG2S8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018057b2d098-00372cb7-cc89-485b-a9b7-c2193259ba5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df84f949a3e8b715043b2b7c0e361c50f2dc46e28b7a2a24551b91bc11afe5e8
Date: Sat, 23 Apr 2022 18:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650738778
