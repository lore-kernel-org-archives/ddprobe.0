Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8D85EC5
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646172684;
	h=To:Subject:From:Message-Id:Date;
	bh=owv5DqM/Nit5+BeSyWqTnkqFSNEXeu0Ezdg1TR+i0HQ=;
	b=PSCgzsRM8CzSi2B7kCzugTXAtkSgGPqNMNqIZzMziJB0yhpjFoH/+haJ6lNpckaC
	3OtRzRo6Kc7QcRJi6wXPsG+QiADkNmNQH+M+VCMVlOAmf4TJeeB2H2gEj817m5/CjX1
	UqOE0UKkQeUUvWZDEUKF+kqryC8fkH8RJrfAnlc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646172684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=owv5DqM/Nit5+BeSyWqTnkqFSNEXeu0Ezdg1TR+i0HQ=;
	b=WKUwnEXpePuDdcjtu2D3IPT3GV/O19l86YSGbJiWiUhKrSw7royivMQPms1ZyVeb
	6FWGxM7uX4keL5uFv/XVXXTOpWLKe/19pwj+i5wuY50K79KRhq6sztLZhi0G013EQqQ
	/b3ZuNYC9SXhl/SM011gDNa0tNxX0PdTShhojlCc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4789c1ff-c9385115-ddef-418b-9ec7-ade7bd5bafaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da546f7f0c50fdcf28e82763675a603076726a8c606fc38e4f74cb44b03722fb
Date: Tue, 1 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646172684
