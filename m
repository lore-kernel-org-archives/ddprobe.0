Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9C17E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646547084;
	h=To:Subject:From:Message-Id:Date;
	bh=6C/kcKYJedououhzeDb/Ule3d05lFuk4zX/Tu7uvTH0=;
	b=BrfieapcEsoFN6uVKbnql8wzD09QO6c0GloSv4DfFDnL3dGBGKSKsR9Hd9Y6jcX9
	03uH6vu8jl8Yaykkp0ddXjCDkGOxTXEjhfo9bFMf6U0REaCmo9KDH6+Hco8zHpq849o
	Tmj1XX7w2ML7maJYDSLg9MLEiubLi8lxn5lkY0xA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646547084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6C/kcKYJedououhzeDb/Ule3d05lFuk4zX/Tu7uvTH0=;
	b=hqmN+QsWzoEuj/iyyUivzROc/ZStPayWvWIx+IGgLKM+gd0YiYy2E3J/i+u3TzOu
	Adp1gXLR3n+RBIL7kPm6XwMa2rJmw2nLP25ES5PFzJHzyK4UGvR1qUDAdh0PLLnN0wv
	urBpC2DuO6PJqg/NrhVR87kq2GswPdaoc8WrflZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ddaa60a-72500a8d-36ce-4422-9ef7-eaffdaf0a267-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d42d95ae9692fc5ca9fd0f2b05ffca32cdfa690f717d414822f367c2c6371704
Date: Sun, 6 Mar 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646547084
