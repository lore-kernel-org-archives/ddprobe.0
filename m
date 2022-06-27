Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0092733E4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 16:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656347212;
	h=To:Subject:From:Message-Id:Date;
	bh=LbjumYFmuRBlODMNehvd3WOmt4P1Qw8jPPnAY91fYF4=;
	b=bWaNhsk7kbKeP9Pu3L27VvoHZMhdvilLhvmrl4tjRK1foQEBGlOj5Ro83m1Rx9cG
	1juZ7HzUFGYNYUTWt8HrpaWz7GlX/WY2dBinU5M7jQ+9YrT6NacWx/v5LH6gqGcYS6+
	S3J7HnlqG4Ec20aK4hpYyyQd1VE9jyPrKBNq+6/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656347212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LbjumYFmuRBlODMNehvd3WOmt4P1Qw8jPPnAY91fYF4=;
	b=WXZO3rxa45preYZna3PoPsoU6gPXdmJrlmY5XxyHRZPeKuZoSWgwEd4eU4wGLjAd
	hyJ+r3bF8uCKBeqaK+Stb61wf2X+1Ub+B+MvNYO3qYRvPJrVKpOaRXhrjWdp9axL3NM
	qqn57g3Ut2DHxXKGX8VzbUt5p2EU26BVeyu7PDZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5fcb9d8-48e055a6-ae50-4e84-a296-32968a972477-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 362ab91c772ca83c8bfe899f0701629fc430e7fd36e91718f7d5c19e56d663e2
Date: Mon, 27 Jun 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656347212
