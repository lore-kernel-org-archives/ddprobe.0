Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4621310E9
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 01:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648863778;
	h=To:Subject:From:Message-Id:Date;
	bh=59174CMRhVkx7mrdxf7la9nGRmfGMAnJHZXzr8W8tYQ=;
	b=Wl+y8W2U9+T4iVmeWI4MMU/oHjqJOZJOky4W2gnfwRDHJGuobp7Gc5E3qri/LFGv
	dqeKmFDD8TMrot52rqhIcCwDPsUqo/O2JofRgsoCHVxtT5fwjalh6udhkGTsIkD1h1K
	Nz8ZBvw4icDWYLuFXpcg7hAq6sb9+Nk6CZX6WpXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648863778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=59174CMRhVkx7mrdxf7la9nGRmfGMAnJHZXzr8W8tYQ=;
	b=FMTY9ooxGXToDtVNDx90KgIkDue8S3m4SwTfG3PJy7GpMLNh7hmZ/3GHEbRQMpUX
	8aQZrgkciTLZpHHzlpvtDvpWldptYkaCYsbygWSkzk6pIbAvAdyI/6zwKihcpR36mpr
	g+wy/tSoWAjyclg2b3KPtjH+NyTVHargHEcx+/3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe7f09607-33b69823-29bc-47ba-852f-4ff579ad998f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 525414651ad5d050c64a6b3611bac446e4fc25a4cea52a538a55711ff0a807c1
Date: Sat, 2 Apr 2022 01:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648863778
