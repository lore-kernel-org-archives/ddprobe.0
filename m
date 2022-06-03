Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA977E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 05:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654234139;
	h=To:Subject:From:Message-Id:Date;
	bh=ZKBy5RQYMZSjSTfpr/OCil3yIzetKWe7iFEYWTgUrA0=;
	b=lagG6sXtjfXUJ25BQC7w32JJtti2GIXAKQz6q3nmWtYADMY7jIJpxe8vlEFbKTvk
	eVP3Jnb2AJn/3XB9m16DySfdUuHG4KoBerur77LHZSwwOidRojLv4COJfUp5hixEAzD
	13czo4qMVy5TgAB8wNQvOzvu+BVURb2ng8q58LA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654234139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZKBy5RQYMZSjSTfpr/OCil3yIzetKWe7iFEYWTgUrA0=;
	b=ZXF64snWvOwWsPZjKCYIzyHDNgVkDp0BtUrTPa9Auxi51tl9y0yh7JdORqZQwP5E
	a5TmaKFKZbd7fxbr9JcDnJ4TPQ50cm5GAIQkhmaIeu3G6ynFTT1DIOnCajzkmTBQtoI
	CnS98y+tNs5p9ODtzwfRBoZVTEiFj0EPthk1CUVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812809ca65-faae316d-e8da-4293-a345-427bbbce5f7b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 610b1fe40db43d12186aa5f43669aa8b47ee90c3cdf9f6947ef08155fffe091d
Date: Fri, 3 Jun 2022 05:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654234139
