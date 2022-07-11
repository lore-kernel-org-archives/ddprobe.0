Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EBA71FA6
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657520812;
	h=To:Subject:From:Message-Id:Date;
	bh=J+fqnDBxcGTyLD1jxUIPLgCUCF9Cjc7I2qCGugsxbM4=;
	b=GdNyiMZP3V6OQJfxf6M2CSPjVKK8S+exOjlNXwPwZp26OWnBs0EjDTjMC3CTcqeF
	RK0t/c3W/knzZiM0XpPae0amaYNRG3FT97hU5yvMIYztJ/NYKYZfZp751OlA7OBjXNV
	gwA3fqz/DvbDxTU4weulLK2E+4iRshU8NP39whTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657520812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J+fqnDBxcGTyLD1jxUIPLgCUCF9Cjc7I2qCGugsxbM4=;
	b=GR2vir12S6I89/gNo54W6RYh6NTEuGUm5nKJoZyJr/CsO80xm66dKQA/FOmlbILg
	F9NG6O7XmiRVfpq2q/MtzpvucpsaGeMkCRE4iqZKRZ69k6c85lWh/A5xagY36TnbDmU
	UM2yB5/Oz8Y4UPTLfAOxHhDHX909Oa+xrc6xw1qA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ebf0717f-8fbef4b8-9f60-4be4-9b54-70d5b072f6c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55f7a27b4898169839d283e4c4848b250954d9082c146f88870a1a3ebd12fed4
Date: Mon, 11 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657520812
