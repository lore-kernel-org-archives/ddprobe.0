Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BFF7F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 01:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652836079;
	h=To:Subject:From:Message-Id:Date;
	bh=am0/LjJTvG8qZFEE7PuRLDe9yNrJz1e1PfHs1B0BW7k=;
	b=USdBK0i5wbo3S1+hRf38BQ0Ptz/KjQmdqjCUIPYzC55NyPzpaFfQMlvPQbhlc5cm
	KcHfElKyETFpkKlQ6Hd4L7V+SaHtRbESXNMJfni6qJ5bYzU+0pxiJDGU/IczZ15JcTP
	slYEePf2rFJdUbWW8iwAmDHUEkT4WlcGw4jYqukY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652836079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=am0/LjJTvG8qZFEE7PuRLDe9yNrJz1e1PfHs1B0BW7k=;
	b=gEtN5XnpMSqbNBo1lUkeVcUzL6YeYnwajvs2F4Jmkp7mc677GQcf3fneIyCXPTSp
	DAwoHSKHPHDO+2+adcIh2P5ubsA/Wttry+WhUx2mxVhmsoN4cTcXf1EjzTAou0aai7w
	5sG/gmbCII9/rLmiYpQre8I0DL+0jLEcHIEMZBrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d4b51681-dc0ecd63-c2d9-4445-a731-f011819bfb74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d9f17661a3eee9b76a839dc5fec3fcecc7263791dbac2d499198e57bf2c4d6b
Date: Wed, 18 May 2022 01:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652836079
