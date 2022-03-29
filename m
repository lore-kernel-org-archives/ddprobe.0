Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CC2258C
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 20:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648585018;
	h=To:Subject:From:Message-Id:Date;
	bh=XsfW3afAaC+h7YbCf9vmoyc/d3QI3dK7DTQUwMvzFhI=;
	b=Hr8MQ3rRecpbVwteXRPFdsgEOpAozFlU0L1WJNFWl0y2Ci6dpheYQwNpaj84tnq+
	1mkqdLc9m3f7txXds+QcBYYhw+h6pX6y1u8BnX2Vdubs0K/E7lvi1visG6BUz/TmTgg
	cjyWiloQwsp7U3EkmNIf1SNlKtX0fqkLNN/t+nLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648585018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XsfW3afAaC+h7YbCf9vmoyc/d3QI3dK7DTQUwMvzFhI=;
	b=X3q8Zxzyln/h5zxmZvyzL6w0JrKKaJZdlnVQIUBzmnkf6pvuRuaYUjyfcHnKARJK
	GDT1uLihvPIXG+Ok5NzjDKlHL5/xLrvJyYnuCz+Hh5WCKGDttZ4AERofgvhWX9x9YV5
	yk/DYuYXo5pgnRC19CPFqbcxq2IRR1PrzYT8Cnlk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd7530be4-393bb4cf-f222-4fc5-ba77-95e422a57d01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03920d8df1502458f84ff6d90dc0d62bdd495d5842b92a883d6c6001daae238a
Date: Tue, 29 Mar 2022 20:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648585018
