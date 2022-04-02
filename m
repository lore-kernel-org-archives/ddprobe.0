Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B86A7C
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 02:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648867618;
	h=To:Subject:From:Message-Id:Date;
	bh=Fz4ZZ5T49Rt6L1OieDdOfmIKLVPY27kgjJv6WG6oI8Q=;
	b=VCe+kk65zVvyM+x/oAYTzNA8vCgPVp1x/yhzgcIjAoT5GXw2jUxMgg/39kmo1Luh
	UZUAys25NoTR7GT0aEYEmTqXfAxbZUPy1jVxQJrr6mryWR3PNrpY0+wknWa9EnmOFuj
	PI0eZol+w/AgQ75wIX7qM3sDqxrx3KHaZsl19WQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648867618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fz4ZZ5T49Rt6L1OieDdOfmIKLVPY27kgjJv6WG6oI8Q=;
	b=bBbDG93a4UOTnB7Gh7yJNi4BlJX6Dmg4L5MUcALjENXxxwj2wrVvuunFgIEGL+J5
	ESWLTzPVYsSFA8Z3sbyJQLfIiv2FYcHYRY0jsg/VgDrZrj6knQ38x8UghtgMbv3RtRX
	F0LAA+J/EacDB6B39Q/IGgifzpzUo+2pKXo0/WRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe82b2df0-d7c4315c-8e36-4e82-b8d5-b22f723305d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7afe3705eeec08f9b7127ff34c8e3ae8ee87dcd5673f0f6040802e352c539966
Date: Sat, 2 Apr 2022 02:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648867618
