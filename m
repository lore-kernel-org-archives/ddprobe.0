Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C3B7463
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660771252;
	h=To:Subject:From:Message-Id:Date;
	bh=0MFDouN8On5+bCYxT1k5C0hPZgVMb6rQQZV3Ji9ao08=;
	b=dCfHmu/fTwgIEG/SqbRcChWE63Sjc+43ukE9MxOqSIggay1CpP+D2TGz6tX0nYZb
	/7aayHFwAJF+i0t7oA5Vpz8KAmc+EwcSOfq3dsFe34OWF/WirxCM5JTSSLcE+c4RUu1
	bxSXeahx4xg6opmPA1kFIM62nU8Yt+CLnT+k063o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660771252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0MFDouN8On5+bCYxT1k5C0hPZgVMb6rQQZV3Ji9ao08=;
	b=Ves3njQy7ai/t40eS0H/+563SPddxZxUrNwQez8yXuMfUQXdUdgAGfvuDo2yp+po
	wFrJxTfKIw0MJralXmC1fmUrJ9UnXK1feCzuoc2qwSGrirGjTWLQktUQUa3Rz1Xog4Z
	r8XENvpfcQRSfiLAj9dhoNfblzy5ofY/rbzap6t0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182adae3949-096f4b50-1402-4049-9e6a-7c81893ca0e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ee4ffd08e9897d77c2e91a3c177366b8f7b7419c42ecb582a085ca0868f9ed6a
Date: Wed, 17 Aug 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660771252
