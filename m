Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD23C15B0
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A474C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670893887;
	bh=TqPdYj7ReHTaGcd214L2piUpWlwqqABcsf5KqX0D3uE=;
	h=To:Subject:From:Date:From;
	b=DvmZHpcZw/KvPJlNHpeR7QtP1UAwDAlkb46pVbIwPh6mVDhFnrRGYIr89yDsVSU20
	 5MgJQ3PcohQClUB31MAoMdd9WPgs3Zwfsl/6X33o0NdYAwCLV7/ojxFRwsU9NH0Mva
	 UupMbZZcaCvDKq1ImmSrv8bItebea3Vba+KekLqiuJ8la8AidloSwMjQ5a7SwyjFAt
	 1wleSsWW2tvcyYbNuKULMwerQl9LIgEY2Z1XvW4vaFQn0BuPKH1nltE6YIdijv5aF4
	 1q+vr29m0jx5zgoRQ7oOh9oK2s/KX8ZpOghz2/AhMlwytAgihmcE4tbJYh8jaGEdyg
	 gjmOpNdIS0GCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62114C4167B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167089388739.9816.16006657391999509681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d3e2bfb5b8a883857a497dbcb25120faaf4a067f08c8c172af735da6be4f76
Date: Tue, 13 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670893887
