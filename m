Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD58515AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647574285;
	h=To:Subject:From:Message-Id:Date;
	bh=1sKrKgwp4dOxrdfQUUh2WqI7pQpN31S+DrpkBwQXdWs=;
	b=EUHf0NOkAfSxWKRW8kxNgoY+79uZ/gXSITASHIIGI61RrK9y0HOTdsaaBfDP0ZWL
	f/MECJlqGSvDDxy70kj6dmpewuVgAlOkQKDyc8sCiAFpMmrJY1vYXko9xOC0xZpKr8D
	erhzh2s497CtXC6//dCkSDjrkkqhHMevz3hmOsOk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647574285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1sKrKgwp4dOxrdfQUUh2WqI7pQpN31S+DrpkBwQXdWs=;
	b=MFWWb6Fyf49TYDnKD4a4dOExnI7SDAqP9lPtVZii2WLXSx2TN7NWCL6eeDEuqQHE
	a8DqV/qCdULew3uN6tMwhL2tLnjMlgmsseC64TqpgzyXq+IuPK/0FfusF5BFYzah9Nc
	STX0ZqzFnjNXv523PZxUy2Ki15ElY3SUCULElSO0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b147a1f-910ceb78-e3e5-4238-8a9e-c4c16d4c30d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4113232bddec46f79614b84b53f9aa61319405c4c631ff0adb3ee77e83a7c556
Date: Fri, 18 Mar 2022 03:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647574284
