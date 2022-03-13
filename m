Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 792F5A46
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647169284;
	h=To:Subject:From:Message-Id:Date;
	bh=qld82C1/KxKU+9fYTIaLnufdWvwZCZ/dOVeVOIyVkTg=;
	b=UhXnLPFz7KzCyZI0uOn7H8tJ5zJ91Qidw+81hTttpFlO8DweCAa9csAjj8vfmkve
	XJgLxhnakt+oPtXaLyZIGhOZr9/q9VKAXhLyZKKwvxyOYv6B6pwxM5uNU+B61sNptHl
	uLjnLP0BY1JD81RzLZ2THpzGspEAw4XwRf0VW2J0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647169284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qld82C1/KxKU+9fYTIaLnufdWvwZCZ/dOVeVOIyVkTg=;
	b=jL/ml8Jzj7UZiUsnW83XX2ZaIu66T/xzJega8HyrKouH1lJBpXqINLGqvzqWpie+
	Y5aasLhIJAtBlQcN3+U+I/tIMyQH3LEYjq++urwjUEv5uvNByLhU7+/havu/JcGTpDO
	MA0lW3YPzrPDA0ChgBp/COiOvTpxH7D14eZ9Bm5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f82f0aa8e-5e58b2ee-9e67-4038-8c90-941ee5661aa0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4bff6296f6aa6dd77866eebe95cf15e1a95c91969d98bc28f224e32ba265afe0
Date: Sun, 13 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647169284
