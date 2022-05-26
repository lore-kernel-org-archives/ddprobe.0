Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED03D1113
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 08:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653553679;
	h=To:Subject:From:Message-Id:Date;
	bh=WoNEe7LNkJRB5DdmROs286HnCK07dWL6/Z+6sM13JQw=;
	b=bmEaubuRICXFPGFGfdfPl919ree1ma8w2jG/f6XcGEFLJg4S6bxhO685sAVqVQ5Q
	GN5AWyL6WzCkt05xwEJqhRwPOalc4R0PlPx+9XUWs8ZHohAgm18J6ng7D60lZWMhqmR
	dCEFbDpQvogzRZErUAo7hC6XGNRNF01SuKwaqqGc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653553679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WoNEe7LNkJRB5DdmROs286HnCK07dWL6/Z+6sM13JQw=;
	b=h3U8nTox2lcAQvR8AxWeXeZQOKh5l7HQxAzVFuxQWoSZ/CxQGg6OG7cdyWwqc+6p
	0dTTo5zU2UuHNOMvqPBqH/O5qcpKGa7/Uup/UGhOkYN3EZT0Tn6hsdwORw/RVDehgwT
	stoWTlrs38kCBixQ5x9i9yJNGTBUg4P57Gsme0rk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ff7acb83-81599d26-c4a8-4ac7-8e4b-543f55b121ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f0d016498bc992ba43a4309f84b82f53f6970407ff453d1ce11fd4e6725d7e1
Date: Thu, 26 May 2022 08:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653553679
