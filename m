Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1814D29AE
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 19:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650224698;
	h=To:Subject:From:Message-Id:Date;
	bh=bO7xXh1z/b/WUgv3tYHb0a5gS7aHxfE8umIGkuZMlrU=;
	b=lL6AnnWuVzXph1BRu0cVRBgp/ojnBlRweOZnbaD6PrIWPZ/2Ch7PA1uklXwbFNr3
	PcMj+99AIQyntqEJt5TeDfRy/+S30o4SAfIzFljIx8nnGqhWOIVh9ukjmqXp42LOdcP
	iDtjKWYE8gTr/Uegme++nX8nxv33KJj4o8ojUYYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650224698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bO7xXh1z/b/WUgv3tYHb0a5gS7aHxfE8umIGkuZMlrU=;
	b=iB/yXPWjU4o8jfRm2YGFFV9MwO3gDgvCxUWm/+MafAGB6MBaAENw26gsS5pagOyR
	5brXZCIUbYvE6BNS0/neQuEPxZJOiwskPFZwdwoTapC0T1jvGNMPiG7LUg+XqW39nz2
	W9zrAg0qBc0hhQHlfPgVvDy/nKCgrNMYo3naACh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180390e93c0-1ffc6c20-bf3b-4c9d-b9d6-9a4c6c3bf699-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba6a719cb6c31680543c095765aeb0dde3072acfe8f0c7892b648a7bedf4b7fa
Date: Sun, 17 Apr 2022 19:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650224698
