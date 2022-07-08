Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCD5373
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 00:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657240612;
	h=To:Subject:From:Message-Id:Date;
	bh=KrIhpvTxD1LQkWZ3Pix2I7Yw/AbTmRqdfvaBoTKnsk8=;
	b=CRz3O/UJPT15ZWNbhnmXy3KI90p9NLO38wvqhuc7qJYvepvDpUIdkO7yeRLI7qZ9
	xR+SK+2G1oW9cS+6PhOWDcwYH6UReYwHR6sFs/f36zLcYcPwfq2bDA/iPpQ5wi2xwYl
	GZe+XejMPz1CGtpoVXqfpSzzndvvnE09Ou4JVsZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657240612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KrIhpvTxD1LQkWZ3Pix2I7Yw/AbTmRqdfvaBoTKnsk8=;
	b=V3z45+ZKXh1bY98iENVyW3NlH/2JHvSW8SENaEeD03bieOPVgcwYKsyMrdP+5SgQ
	y4BEBzFpUFOKkQt9NvGyPLSTqZbZ91JcxfK30x+1XzpH27yah6EV6/TmaEatEHCle0e
	9DoYCehX3PMZSiQqFaFr3yXUEIX8T47GBK0G0Dfk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db3cedaa-adac2010-e665-43bb-b953-0952c894e958-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7664bce7c51fc3e3f25e1f4fd236466f67e7a35191fb1a4791a322eca59a3e0
Date: Fri, 8 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657240612
