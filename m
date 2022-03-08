Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54937A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646725284;
	h=To:Subject:From:Message-Id:Date;
	bh=Ov6qKXydpNurUC0WnvPpA3L1YFNwgELfEcVWY6wcS3M=;
	b=NCz6yiy3BAQDeD6b4mj4F8vPOHfdpfUANFBIL7+3a8uDOuDwn+Dd/Zsd3iEEFCql
	gSKlyXfhGt6vRgd0G22hobfA+vcpvEk5NQ6cmYAy78+jucNndpOd2QIiZwmw6zww5BZ
	0PkOzoZhFMuBHU787pnnIRUEr0Ajetu0qeyC91AE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646725284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ov6qKXydpNurUC0WnvPpA3L1YFNwgELfEcVWY6wcS3M=;
	b=OvP5nhybfURJyEhITf8viTJHr0XASZeXLc3wncuvtueH+IHQXt5HT8azrOTI8M/X
	+IAwVXDHvsQJVbf/wWY7HSeUURLnTcV76FctM9+hAnU+3L4tzdktp8WGTyhu4gB+bd5
	0Jfn8Q6lefXDIrGv2F6mXsEsykwJwJxQJPLW9KeM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6879c3bc-4ff7a259-5640-46e0-b0b3-524bfba14694-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cf47fbb7401fbfdbdb7f1bb7d2500587f3e043bc64d5032a29cc7d02e52854e
Date: Tue, 8 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646725284
