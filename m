Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4FC21561
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644929785;
	h=To:Subject:From:Message-Id:Date;
	bh=XAGGerGeQba77omPJxx/M/IOdlL7/ITVgM4Vgb0wpPU=;
	b=ZoiIEE8oYGS7U9dV5iz10dEvH/QaR36E0uZTnp/TCFXy5R6K4PHuEx5uGnoX4D3H
	gz39SHhXdLeTYcaSC9WCmZwTsb0OdHJ7f5MM6L/SNXvpuSQ5mG5R7JsJfcQeqVrx774
	zEnBiW2RdBS71EvAkuQiDYk0DO0oEkMQss/7JItM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644929785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XAGGerGeQba77omPJxx/M/IOdlL7/ITVgM4Vgb0wpPU=;
	b=RZnA4RuZltFwfS5+bydk9IGaDUp7grEyVEIpHq5KE4qTWaP6TGI5hw8MaDidKjRn
	viXYwVAQ6T9K0uTmSG4vhs2IWncz6zr7XN/5z42KCUOXcUi8lrgAOHg+h2O43GF1qIZ
	TCKYj3n5tqSiN3zsHJECdoyrjTyQqXVCN9yRlzPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd749bdb-0e5b3592-6890-422a-aa43-4112ee224f9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c659370fdf144f64b5c87bb442641e25ddca605feb09491c10726f22d10bab57
Date: Tue, 15 Feb 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644929784
