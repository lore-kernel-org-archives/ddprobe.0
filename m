Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0BFEA28
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B330C433D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669861254;
	bh=GcX1S9cBq+bK4bq4nm2SBCN2fyQxfA/EAJwASiN+8P0=;
	h=To:Subject:From:Date:From;
	b=KVkjgxaiPjDSqMxfRxWrDQ1WfSl1PjlopLygMFNZAPSOg17b5AaJ2Og/FuwK4ep9W
	 FJdgxjlf+T7BKuEMfr9JZkXWGv2EDG4ofI1U4AMY39K9gat5wGNrG+7UH+sS48cnqV
	 2/4Hxp89nwyBRJf8DFzXOqrWH9nNe6yCOWDKE2v+AOZtEAOGBoxILuIQduEB0cdkWV
	 cTtqHLjp1gen8e5a9jyfztcXLgte9RzDiNUXj9rtqVDogwmVVVCuy/ibKSMF8+PZS6
	 M+sZ+LZ2kfhKc5/mQ7gt+C3mC0AwEH41y7pf/1Ifj4MmCGp7vcKbaOjDK8B3op+oI4
	 gnhmyfLMQYxnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C59C47088
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166986125432.8882.9860261022923018868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee00091698bfb0f12f509cd050dc90a6de1943775709e23b0a8e0e637fd22377
Date: Thu, 01 Dec 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669861254
