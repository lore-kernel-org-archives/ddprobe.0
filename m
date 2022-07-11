Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F07C1C17
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657511212;
	h=To:Subject:From:Message-Id:Date;
	bh=nnXmdEJZ0KiWsPunhDbSb2JrwyLGI/4DmB7uD4REqEU=;
	b=k6TwSuPdQIiy6yTGKR3KMdjJ4h1IFU9oMrtkAHgV75gx87aXMZ+SWP9946Da8Nop
	AlmKJSLfA5bv4tQK8qqhzTKM/XjFZJXgoqmX47RoUvVvdKQ6dxWXmtLh4fF/0LbXvZt
	Ifnj3IqP3I4oLC8XvsPoK1uFHByLIcP+SrP95bO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657511212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nnXmdEJZ0KiWsPunhDbSb2JrwyLGI/4DmB7uD4REqEU=;
	b=dZmHVblWw19F1+sw8WAX236rdwfjGhf+5rBaXwioZeTawtoRcfIoY0G49nPnjIdt
	P1zVGh6r00RkUu32cLDCGluAoepKjvkFMD6AigCO3D0yJAlb9raOuOdVk5szJ+GxhuC
	okUqWEr7FuhJXXgZbi9GUwWsJ/b9HSC/bO0VP3QY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb5df527-af639e86-cbee-4048-9893-307642aa20f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f27ee73ebab2681b7625541baab85d83ef7c698c3bbece1aa91c77c7d42de692
Date: Mon, 11 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657511212
