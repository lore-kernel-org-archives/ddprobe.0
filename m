Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FA215A5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 22:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649975578;
	h=To:Subject:From:Message-Id:Date;
	bh=Plv4qlmxr+d3HoBIsuhA4V2V4CTkLakG/F0OCDg+iPc=;
	b=Vcex7jJ1I6ybdUCenEiz/YFigh1CEZhmldEEQXOme6fDtu1QO+hMgqFB9VIfctxx
	Yt4U2ml+shYlc0vO97ShgVV76t/xdgOl9gVC+VOeqGheTjLVS84nwZI7jz/LsD/kK3f
	AmIJf5GdON2NBO//Qra/1EkmfeK4hQymOSerPso4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649975578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Plv4qlmxr+d3HoBIsuhA4V2V4CTkLakG/F0OCDg+iPc=;
	b=YhH+aTm5PIJxDPuYMjsiYBkp+ZbBaqAa/dd7KmF4EVK3ZApRaJES5k0G6WPX0SBd
	Cf6b37ozHfBTGoaT0BnjyvL+ip2T1BwGgtcsOpfKhtNIcyr1y1gd5eMqKWsNdhvh6jN
	b89Tg5M9VeU985eJmbEnVFoufWKXbB2m1O7humVc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802a354e8b-45d7f849-1dc6-43cd-b3e3-29df90d938c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0e417e3cd1e6bdf1d41e440eac557cf5c6ff9fdaf24986c8c0b747a6b759017
Date: Thu, 14 Apr 2022 22:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649975578
