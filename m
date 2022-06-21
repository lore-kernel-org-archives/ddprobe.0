Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D33A44
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 08:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655799659;
	h=To:Subject:From:Message-Id:Date;
	bh=5iOn+Cg5MV67PhfZHlpVfHCXfA3bFtZ67StCJSYomP0=;
	b=J0HE6pz8vKR8iWU9lzFMtDBdz398gLpVjZ9+gAGm+aCMLiqW3I0s3KDSJAvMXTtK
	vL+GZuhx7KFphJAH5Fe3Evo3DCV6LaFRpUjhnE+PukQHz5gmv8wDAt00SDk5mNwMzZR
	eHCSiTDjn3z7DVLyV+AyP4lZe61bGJMvHcxadX0M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655799659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5iOn+Cg5MV67PhfZHlpVfHCXfA3bFtZ67StCJSYomP0=;
	b=dG8p7Gj2UZLs6ndN92HCoA1X1wp0G6Xf5W/CYfdrZozxNqT3EOI6px2aPdTkuKvz
	Z6sZ+MJc6GG8+RO9ioqacSOLUiUC7cVDb9R5ze0hbqdu2G8xGTUkdXhH/9h6XLxRjXk
	B60Wj8I7CEcpUOOqZGMAGAtHV/z14wKaLbmFaNQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818559bb0b-32191489-98cf-474b-9028-b81303700fc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc4735fb269e2bddee78df3fb561587067b782f7b1adaaf52e094b90e1f842e9
Date: Tue, 21 Jun 2022 08:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655799659
