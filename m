Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2838715A6
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659285652;
	h=To:Subject:From:Message-Id:Date;
	bh=w0qOs+5abFytRa+v4Q1ieYqav1plZ6ENWIG9mGJmzkc=;
	b=TSwQiLGcEx/zOIBlI1+qLp+PklDaVFB+KQUOwgnqhtsa69zz68FXk7wXWOzPMcxr
	6zyaYulBDoIaFfYgloMWN7wpWMtLRbOMvL8XINsoQjr5qTgvNeLj5VP+ZMlLTRwSdgp
	bjusduo3EezYYNgez7Q3DK6ygcIwOR7pCFuSBRGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659285652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w0qOs+5abFytRa+v4Q1ieYqav1plZ6ENWIG9mGJmzkc=;
	b=ZppN841/Z/z3gxjB5XDBe27pnp8tu7/GSe5a0kmK8TSYBVTf/nLSaxnDByHZKvJh
	p0eUHOYc1aDBisEqcTiLSGdpbHUPHysCoxDePp98cpo+RzE4ZxrKKaeM8I4jWDLN7JT
	Bdp1OPfNDr2oFbPL3Y6IPJcbkLZaDKv0Mjkww5eA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825521c460-6612d7e1-0dee-4f66-a59c-361cf15d9b22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6212a21bc977c3a112f7da632c470ef9eb828055c266110ffc90588efcc656d
Date: Sun, 31 Jul 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659285652
