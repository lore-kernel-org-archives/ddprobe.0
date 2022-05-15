Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A951627
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 02:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652581139;
	h=To:Subject:From:Message-Id:Date;
	bh=xZuVbel5P1JswutSSBB9sKQbAMMLOJ4uYGEo+2fXWIQ=;
	b=i8rPIPMtCJgk2AzIm+WlgQ7EwiQHvJdfRaUqEBITJZJ8v9AYq9YH5gebj9fIVwa6
	hFEy1lietto8fJlcQSY4q4v9lKyXdt/SCPYa8sr6WPhc+KWOOzY/H8bLSET9hlf9gVG
	u1hKHDqQ+ceBhionUiLdb/xa/CWEpiQdsOg8bzik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652581139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xZuVbel5P1JswutSSBB9sKQbAMMLOJ4uYGEo+2fXWIQ=;
	b=WJgxuxsRQZES7GbT8GLhdJbXTWSV8zv/RN2gCFsUnOgd/uUKnRz032P5jqHaiySt
	XTbDuKAIbSbJauZUd6YdS5zaj0pYHgksH5UeFppLjP7ObIOAZRsjt/buCz7c/rh7YEZ
	kjRGZMqiUEqZ9XkHxKoHrVP5Wl2hHIf6Y7JO4lH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c58303b6-e486581f-b4c4-4850-8211-1b7225218097-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d304768c719587b02306d413ad4cdb98e98a4154b73004e00931509a42078723
Date: Sun, 15 May 2022 02:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652581139
