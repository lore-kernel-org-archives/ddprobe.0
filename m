Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5505315A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 06:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648363198;
	h=To:Subject:From:Message-Id:Date;
	bh=UEh1r7eB+ea97mR2X1mLqLs6u3QNhYA25OgqckrYNas=;
	b=WxOz1nFiwREQQ+S4bYVOgko7y/TYEJJN+MVxf5MFobxk7GjpUbJRSSF5N7q7iaw+
	zwdMJiSlrEOe7x8yes9Qfr8poaVCMAbohwPwtW0DfNdvIxizQ4qnbFGG5b4gPCSK0ZF
	vz6QWcahKlWnYQyUdFzc+YkiSwa7Dq661fltYfnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648363198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UEh1r7eB+ea97mR2X1mLqLs6u3QNhYA25OgqckrYNas=;
	b=bqKCVwaeaDgcn4fVjXfZT+wg/Wm/wYy1qsJ0Gyrpl2rGlmWbR+/jylcWI1fvlmTb
	gHwiNEg9YRUcONMoKuFNHO138mSdHOokTSGkrWgsjZNipnWu9B3TrxPl8X1yYGGJCWd
	Fqk0x3tVYZlASjNkZNWM7MJhedpzNa/mvDyY82ws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca1a5774-10e5d1db-66ef-48b9-b879-df0222c346d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b50da0a9525656c8b6148686aa518548d5f444cf8b734279e3444d568fa43e2
Date: Sun, 27 Mar 2022 06:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648363198
