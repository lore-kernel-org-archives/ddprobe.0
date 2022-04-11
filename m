Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086161FA6
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 22:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649716198;
	h=To:Subject:From:Message-Id:Date;
	bh=IONDRJNbHZNiu1eWpnGL+l9/Jik6TD/2OXIHyisGMFk=;
	b=GSxS1CodRytE05vjx1n4I2/bBx945HyBuGPgcTdPBVMEKegGGXAyTwsytRuQBAzX
	I702EC4uTAFXXr8ZTgrj+FTlHGnyaLVa9AdQ2TIOzfeZ3MLbAcuXph61EqKRNMXh1Vo
	zu9aWGAptPPyjeNjAffYHdcLcb1pNMffg4QTB3sk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649716198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IONDRJNbHZNiu1eWpnGL+l9/Jik6TD/2OXIHyisGMFk=;
	b=bOfyaxyhrkKs155hgQ28h5hGmgiRQiuDqmfA33S9jHK3kBAIOuH5Z2e0YXGNKOo+
	ej61DDQO5T5vHlxXl2yjb4gjR68y0zNFkIVZc0VLuMiUjXTxpvekP0ahFeU2sZgdoJ5
	PE9MCUmbcbxgi+7BTEw4VmZMpFBumMrBRpwHhG14=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801abf7c00-54e863a2-128c-428f-bd26-dd358c2afb9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 17385ddb50e37cb06879c714c2c122a947ca6e97c0b70010dac9e5a19dd5a7d9
Date: Mon, 11 Apr 2022 22:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649716198
