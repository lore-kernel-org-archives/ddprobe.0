Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7917C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 07:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654587719;
	h=To:Subject:From:Message-Id:Date;
	bh=7B7GXeryt+fyf/HU5d1ZuZsYSxhGbe1WtR3q8mLppuI=;
	b=Q86EEuODLoq/MIzoJvc0Ho7nAPGwTJR3s7Bhq+KpiSrCc3zTo7ppFwlQakHttBsE
	v3t75oJ40FKRTka2+93KRL6ATauLkQdpSXTy6uibu74MH9DW/V5/xEAyOqlMEQ+9OqA
	10tDhESSUkkh+TW0f1gtFP70TCsAT3TXYCnxnxMs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654587719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7B7GXeryt+fyf/HU5d1ZuZsYSxhGbe1WtR3q8mLppuI=;
	b=XhzSQneEC1dtBjzElhhk0hInyVl0i9DN3cYothA7wTqlUCDVqwQIAqauJd9Q3CG6
	beQ652yOmiWlMuHplo5MQTLM3iZMBb8A8qCmMZWmSG3lem4+/w0x8eqcLKH9+7UMtrD
	sAQ8NYenBjINfAAMWMWaNZhIKk/7nlk+XRx5GSV8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813d1cfe4e-aa0d99f4-bcfc-4d19-a3f5-a72d6539b47f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4510f5488c19985703b0f7521b339ad9dfeba11cd1b63e5e1cc0a99957f34e4
Date: Tue, 7 Jun 2022 07:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654587719
