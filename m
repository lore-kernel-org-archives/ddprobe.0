Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A1DF4428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660061453;
	h=To:Subject:From:Message-Id:Date;
	bh=JqgzePrj55+pVuCZVKYt6bSzrIuO9e6xw95q9Gw9rgo=;
	b=LHrROmol0upWRJTU226Upd8j7wPQzA9YrH+lYBq149pAk1fT+Zr0eJgluSUTbURr
	jV8cylWbZQZZXnVVnFwr4tlASvUzB/hEelQD7HXhkDAZCuDnnUTqThvlRws+BTdENCN
	KJpFY+jnpwYBt9JP6ud5vLRHzYiaulpdLsTk+pZ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660061453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JqgzePrj55+pVuCZVKYt6bSzrIuO9e6xw95q9Gw9rgo=;
	b=boq0f5vk7b5AAqWy5McFZa8HaWY5XtsJ/dfvvoEUxJzvso6e1ux+wR/dCwpubNNJ
	ZdwRjzvHmEdIt/4s6tzYtDX73HSbJdn/c6xGE/mqaNfW49I/qM5GkPYPNX+8Dw/bMvF
	7XWB0NW2kk5mHrarzu43JBeW6bzFS6DIbhu5KyWc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182835f8911-115b9f15-3988-46b1-8bb6-153449441568-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dcb9882d85be87b31433e7b13a4b9694ac2842586cc4c7991bbcf6c60f4a6ab
Date: Tue, 9 Aug 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660061452
