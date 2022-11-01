Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C90322B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CCFDC433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667323854;
	bh=WKJhgqeWRv+9VdmIOWQX31MmDHfltcWRHgCVzBrFEog=;
	h=To:Subject:From:Date:From;
	b=ugtHisHA9b/FWkBnEe9biAThw4kwTkOHEcui3RuZT5nNhKRA4+Ao+KL7cNVlpwXZw
	 /R/nuw0qLTGGjUTTvZ4o+brj3cnUYnjtXZr8lG4GtPZJzjkyEIQqrVOvmNeuX+EPDL
	 bOPxpCgHZ5OYMXb8GpEuPN9WdqVF9GN5XiQr5G+mJokSIyJ1saWL7Eg9uzo9niCt7k
	 ucsW78O7xrHSzlGqAdW4wyY0XaFKJ8ONCvAXJgAnmSHZLeKnjJgs9PT2IuFF4vNKmb
	 WZCQ25VLhXYbL/i91nt3LR9WPLE5EZp5/DjN4lyAtKTdm/l0hLtok2tGWuAyyIVRy/
	 I9QJ/6EWflYXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D261C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166732385437.14669.14659521220397000057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386082cc8e636d05bf25ac51dfaf323f014cac8f496ff7a4be0c42d9c73b57b9
Date: Tue, 01 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667323854
