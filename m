Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F7B18653
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7392C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695161708;
	bh=hslLl9qSz+KBjqdlZ3qNSErJJhjJNBCJSQ8pmROI4G0=;
	h=To:Subject:From:Date:From;
	b=GTAISTF7oeV8BroAcxWWs4iUYLKD/7VB2yHfFH1N1UzoTKJzEiPDr+XRkx3axdhHW
	 CTfCltoZDIoDJ8NNmJGxlCzP5fhgGCl82U0IH3lEP/euZCwtnHOZLpjmX9sg4/Lnfv
	 8kW5EeILBurJZrExhviKfqJRvoUaMO5kEFmN05JNmWaG6YidlEb2Oc7yjyEr4SdaUk
	 52gvWVytG/6fopAa4MKq7k23xKVgsE3pTEk0v+UfCxgeWm6oaQ6S+AglipgB+63jj5
	 7QkK/ki4n55eQWhXarvt5JiHNvP5IDVJgI3eQXwZDCIoqm7CxfvnOPP7Ra7+fO/DXa
	 wbap64aAZ+ldA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB320CE79A8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169516170867.24224.523317946743288156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 344c811ce3eab200a32b557d556d3c8ffec932443f8d9a4815338d51227cde46
Date: Tue, 19 Sep 2023 22:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695161708
