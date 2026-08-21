Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146153D9534
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787303435; cv=none; b=MjY5e41kKKa7WtHJNT/m1qSr5nHvrLwAdfU/6tuPAidYDNu2oYXakkmVylA/K/WWkFhTQRKTm1hsKQ7Aib3iM1gFOEev+RbZcR0vkmu/Pl6YfC2kmjTd6w6XV5b8PgRDdmmteJ7tGr5d+PvzD4hjnfAwS0u18vFfKZ5qH+EA9dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787303435; c=relaxed/simple;
	bh=KjaRiIgkqRRGqupA7RqJOdChXE7D39AOwjtRg8wCNDU=;
	h=To:Subject:From:Message-Id:Date; b=X7KdzatE/fAdplHUeJ/pEQwkBBE0GEiNLTblWa/jX00XxfOimVglWJjm3OTFCfONpPngyJZKT0nWuqQlcBEMN688if39glFjz+UyWbIgdWud5YSk1IcAibh5My3uGv6W1aUn7UD2jszhrtxyllIfmQvdkG1tc+N/7oTQzYNOqG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opf6CRH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opf6CRH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB47C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787303433;
	bh=KjaRiIgkqRRGqupA7RqJOdChXE7D39AOwjtRg8wCNDU=;
	h=To:Subject:From:Date:From;
	b=opf6CRH83TfmPbzxTEt5T/F8rRtdOgzA8xjtBJF+7tX6no4DMc4zVnrKkIAnbEZgO
	 zO05BL+7MRUH7StR3ltRoSdml1G8KZJT6ctppOnC+GDPzzGgHT3OVwkhnFXchXn3Oi
	 TQud4pM3xJ5A4bSYwYTRexu82KkU4GC1vVLVoDjl7VjU8+ePGRHrwuXudp98sIa+b8
	 z5cyFj2oeXBsLxgevdm0SIzaJQ0x9aHXF9ugEmM47QdCLBS1mU8kTf9IvidHnO0Fz8
	 3Z+zq/Ik6PmhMWXCAuQbESRbTT4mjwzSTMNaMiOfbQMzE+0nGjv2vr8jwk1AtmpBBc
	 GJD/3/Ah3VdOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5487C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730343372.9501.9305605646765331885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7e00eb11522909091c34f407191c36706c08c2e549431e42fe70f095ed9d36
Date: Fri, 21 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787303433
