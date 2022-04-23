Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE56217C2
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 15:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650726238;
	h=To:Subject:From:Message-Id:Date;
	bh=6qToEXiKRd8kXERRI9+R8L+4o2N5yDVsIYWvnMk2YRA=;
	b=Ltw9hmTpoVi+l7nJwkHrP2y+QGwZJftoCZsZIjze2hKj8MHHG1wFuYeiXAf1K6uE
	FdfBfooFexYOzafDETPgif6tJoUdN+ziYiCApO39JgMTYZ3kGnMJvNARJThE5TLqxgg
	J07qsPzMcybc/QYWvmVBuhLo/HAFcOBISXTs/Rms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650726238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6qToEXiKRd8kXERRI9+R8L+4o2N5yDVsIYWvnMk2YRA=;
	b=AH7zkfvnD26dhAdYf4gu8uTknByo6aIsQpOJ4X/pQkY0LauUkv9MI+B6e1d2pK/Q
	6WB3+LVhwvYnMLnOMEGU8vy34g0OZyR7RTFyF+KO12DdgD1+QLt6X+9ES4E/iXyq3rQ
	vpK5LD2o0AyducH9U63b2CLseH+KC8/as/jKdrLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056f3780d-c0cb985c-b631-427a-91cc-f8e2ba7b90aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60f512d39820c8a067e65bfde65047651354f13412338f3de1656d7ee6e10062
Date: Sat, 23 Apr 2022 15:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650726238
