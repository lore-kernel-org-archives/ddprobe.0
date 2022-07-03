Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084DF1FD1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656833812;
	h=To:Subject:From:Message-Id:Date;
	bh=+I1/oBlUwufPdgiKYeSSi3VikjxOW4kVH+j/Sqn/l3M=;
	b=MosD1o9KzKTsuaACjVLDrjgwQZsBnhj01WmzDqVdryDgbvtkvmym408SV5MPyTIU
	9E0wNnqFwxLUQgiHXZGFP70ocG9Z3XHofG44YV09+TqERa9Gb0KtFrEkHpm0B+4UWzt
	lxqYsf+a2GAhBj+BAJOTWMKGX/whM8CeUh3PqeVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656833812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+I1/oBlUwufPdgiKYeSSi3VikjxOW4kVH+j/Sqn/l3M=;
	b=AG10cThzsVt2Te+VbKZKFAjp+PCfOsCjox84cvlBcWTDNWlpS6I9fx/fdzpwNqMo
	t+7R3ITKIsAZJzUfxWUYcz6skTIlb+7B+fkQkGnCsj8cFNIMybBVoXcODSY1dCaBvA8
	yPj3MkF9rVASK0uQVMMxGDov5AMHG10ofoIY/rJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2fda74c-1ffb9b53-aa44-49e1-906a-15d7d0b1a230-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8bd9bba82157bcd1735ae869f5cc068abf2ef8244d6ba5fdc868aef0c0423f8
Date: Sun, 3 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656833812
