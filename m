Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FE8A28
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 08:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649580058;
	h=To:Subject:From:Message-Id:Date;
	bh=09lBQbaJtJbG99AcS7Uh0OWgOZEYjW559w+ocIZV5sk=;
	b=BViRmkVKUre5tS/Va16uTKOV31BCsLvas2OsuFik7pjtBtNpx5exofVr8OIX/G7h
	zFoOsLYK15eqfXXWHY4nygv5BPy5ku7LdbmVHeFdCLc68PaVV/MAntVFQcIBHhGkYrF
	oLj7+B6IEwUQYWy3CYGSC8ZtzZsh6TMi1pz/7EdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649580058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=09lBQbaJtJbG99AcS7Uh0OWgOZEYjW559w+ocIZV5sk=;
	b=VMetATbh9eQXzhWqXSl02MZr48hRLxEhPkYo68deKkMRWgah6QtenDmxEy2KORe1
	p5sYg/nX0wRjf4iJwY+xJ1n3VwmTlksvWhwYsUmz5nba1I3gSUTqNuNzeXkpzei/21i
	o+gMgXxp75Y9qtzbWdVXFLNy5SBmYmKaflqREsHY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018012a226b2-fb67dac4-ba63-4e06-879c-df4f38a6704d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eba4e291d97df5eb3502d91e6aabab1c0c9f5fbeb5db5c242412a93da5784ca8
Date: Sun, 10 Apr 2022 08:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649580058
