Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6FD28FF
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645021585;
	h=To:Subject:From:Message-Id:Date;
	bh=ojb+PA33u66II/MlvYc37zYpxFONFF/v/hg+FyJySDI=;
	b=Zw40nmPG7vB9H82q3wptz99xp9NlQu87/dN176N5yYwMgHcAC0aYD8FiUOKIcgF8
	JwTyhGlWE1D16UPwzQ+k8k0lEJtIVlv5+QHEerl48W94kTHnD/j8XoLb6cGtTXPIZEH
	O4QJlxu9xBYlWT2xKnDjfTeBb2Y3ilHbziaJ6X7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645021585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ojb+PA33u66II/MlvYc37zYpxFONFF/v/hg+FyJySDI=;
	b=TP05gDONDfhPjgDyRoOstlrMN2GnwI6XJaNwRjK47f277iQTDMci0qQGoM4ZobAB
	1UiRuHU5B3FQqNQwbxfgOH5tSdBaWJXOO3iKJP424NGTFmOL2m6OaeaqiIEceA/Py8i
	PKWr8ra1QpBKWWbC/HsXNy+No9fBU2VhO0D62yp8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02ed5d82-6ae358df-f6dc-4623-b29f-658bcd64a207-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac69a365d8e63887b097aac25805a4febc3ab1aaf7c69dbf829e056cc7049f8c
Date: Wed, 16 Feb 2022 14:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645021584
