Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBE81389
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 06:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653634079;
	h=To:Subject:From:Message-Id:Date;
	bh=sGOWfiVwTV4rzujjWqjJwDYxNhY2nfwUsLxNQ0zFZDA=;
	b=AlnOwRvXj+EzT6M9+aEaXQNREPz7JVO6FIE1GCLh5PL6zfRfviLHOeEB2MsvOuei
	ZorwEeCoMWH6DEBGyFy3bNpoVKnukoRXmikSWQxh9foEEXm98gWCxm4FJI12zlvvM7B
	KaJ25uDt7sJkbtrcMKBPoZz5WPFw1/WP3Ed4zWSU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653634079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sGOWfiVwTV4rzujjWqjJwDYxNhY2nfwUsLxNQ0zFZDA=;
	b=anXyj4tVl5nj+9s4oG00ADe6VY2jaI+tPYFBVQwAHnNFCHw0Sgw7FQKhDcjWpAH7
	jmylAvJcEnAhaYHeDlUY0fbM5V5v/w6tmykSXnmKPSyB3H85SYdJEzIOeqGbjgcSAuh
	vXZArHsAc491x706N3l3djzTZUEDlsVAWGZgde6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018104459a61-564c8b5c-da50-484c-88bc-8c826b9c1802-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07bd66884325298d739309e412ea887c418e3b27b92400a5b506b8d0d12f7cd3
Date: Fri, 27 May 2022 06:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653634079
