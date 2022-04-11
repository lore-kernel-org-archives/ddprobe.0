Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1411363
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 09:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649669458;
	h=To:Subject:From:Message-Id:Date;
	bh=jprBRCE0iHmwURLhPFUwofQ3gxi27aWqXtLkVkD0Psg=;
	b=be2SS/a+ByJJox5LDooK5jrOxTNU5EfnDB022U3XdQXY5YFCYRP6v1FzXwLfn82R
	EUay/uZ1+/dAVOgN13VGcVtqtNsOxzde2DyoTiVzDvlrXIRwSJj+cSRvkRCDdBqv6lY
	G7qCpTzNXd8AdI3uiYBhc3J1BUtKDIyzZe6oqqqI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649669458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jprBRCE0iHmwURLhPFUwofQ3gxi27aWqXtLkVkD0Psg=;
	b=aChB3PNGB3PLmYyRbbt9jIYtEdEV9hZvwBm2RtcAOBvrkhJy7wBqi1iLYOfp0jHw
	KKfGpmDgzG/n5BNXWfN9EN2HMFhDYOtgiOMQk1j/spT9CiRor2eECUKwdxmjO04pma7
	B/W2MBPCFOeAftdhDogIydNg3W0Qfkje7VuHnHbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018017f64954-86dc2c3d-bfdb-4f1b-8a58-11714ebc6007-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68a3fb44340b1781ac5c5668deb41b8f9bb5e78030a4366028902dcca60e6f2d
Date: Mon, 11 Apr 2022 09:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649669458
