Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16F02567
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 17:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650217018;
	h=To:Subject:From:Message-Id:Date;
	bh=Bknp0+exzN5rd2W89MaDP+sCCpgnSM7vhQauHQ+mXis=;
	b=HbpQqp/mbJrGKIG66vKsVLsyR8qA3WowbjInQbWi75+//pb0V8fPdsrb31Duswzv
	ICpxDERqJ14Dzc7dfvXAr3PHeLdcyxgV+HhZFPKqO5xYaEgEaJUcuI47qxFPVeBe5RO
	3fkuavv1aipusprz0J/gMFKui50is46nCi4SzMqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650217018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bknp0+exzN5rd2W89MaDP+sCCpgnSM7vhQauHQ+mXis=;
	b=hnlXlC/OwmoSj7buN2t24SbjiOgUiz9/yltNACNjo1GLet0tUsloaDo8wYUTYMrN
	8xiK2Qyw7Zzl37/hj0Lzx5fsYQYyqwO/w2Ba9+vQhyDPGf5OegVnT3MkVyggV2UbhL7
	E7JaFI/sAn1Z3hEULk/+QunTmhq4wMI3QQHvItS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018038996384-04104751-7556-4426-8027-e80debd4d094-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0bd1134bb221e8a732f60aab23f06ca03bf159e79df790a000efd324e81eb34
Date: Sun, 17 Apr 2022 17:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650217018
