Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C33362A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647133885;
	h=To:Subject:From:Message-Id:Date;
	bh=GSPCDjyR03pIsje/zRCzxHshMbuzNwDoalVWqmQi0jo=;
	b=j60DYSWeVaEtp97CzKUMqOjC/Ua5tDezZYCr298dg8iNZECfUxs0zoLGp9uEGX40
	0RA8sJ/CbUFOju8hu8CtvipGCCJ1+s8fJrCMYIYHd2wdXl0lWOvUOc0pc8o3ZWV2Mex
	6f2UkVtouXecln0ebYdTzMvz6UpN4V7frPB1zhp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647133885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GSPCDjyR03pIsje/zRCzxHshMbuzNwDoalVWqmQi0jo=;
	b=hubf7qf5EY2qF0Ne+WnNhCdrn2k4bMk4mEEJce+gEPrfKNPL4plZY/ZVyDBBkqGB
	wLF1Xun/OLiOusONHvviFVAfLhZAaB91BSEJzWymu1M8OPbkujrvfHvMv4FKUEMIauf
	sFT1uZNOfH8CtIJEy5JKFZZR64q6z8H38ljcm91o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80d4819f-e02f34ac-b1ba-4d4b-ba48-e042930ca60d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 695f35cdde69b6eb318242103eb46c56d022311668f5b5cb804a86a0d4eac420
Date: Sun, 13 Mar 2022 01:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647133884
