Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7D01B72
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648049785;
	h=To:Subject:From:Message-Id:Date;
	bh=okRjnLWkVH0YZNuAPpi/Ml6LE4QJSsnOVEkk9LoF69U=;
	b=Lt2mA1FBUh88b5+UxXDGmoUqVuOw9zgLNymdJcLec7zvUtAM5uarjedF6YhcJk7v
	VsjOfB4tmz6J8l3sgJTWSOlvXnu8a+XkzVjJMcepTeOXqh47P/TGL5Rvsqmd6p8+B6D
	z1v/hQV8bqKbKPztwUftoKQT9rRsgir4ABJaalnk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648049784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=okRjnLWkVH0YZNuAPpi/Ml6LE4QJSsnOVEkk9LoF69U=;
	b=jLhXzYaeLBG7SKCbQQWi+gvvtA8k4n4s1tKXphKJUcV+2r3TJgDOC5Pne0o6n3Ol
	sa7zbICkg07Co61c0nTXnrjYhnO9iQlH1K+VgvBIBSIzvJhuN96vnbLEzC+05urvVyA
	I9FOV5K3k9Z3BGQC561VBMfUfskIww18Ky6lms48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb76c07ca-11750ca8-7caf-4790-ae68-3cde4e473371-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b184cfba4a02601d7983ff652f64a9a160400c11e696e14766ef8f7db2dda793
Date: Wed, 23 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648049784
