Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185532F2F
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 15:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650813298;
	h=To:Subject:From:Message-Id:Date;
	bh=pXOD31bwpApffnJU90aaay9E5Umv0XobtDwrTkXI7ug=;
	b=UKZK3PltP8N2S4jrsm9W698jM1HYHSIm0xwThJDXgIjAoWmwDWzhIbc+Yfuv2ry2
	jNMZ5x2o4i0H8RJzLNqIYUn5Uh0gBtIEkF5UrqTPa3vQjiUSKgXWnlpH9+IF4gIHVap
	Nr3LruBkaqJ2bj1sEy6numBjdQVqqBwuh7p+hKMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650813298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pXOD31bwpApffnJU90aaay9E5Umv0XobtDwrTkXI7ug=;
	b=SNweyYaMorJyVuRQ2EumlW6Hhipi7UHVMP7xxlhOGVt2h2bBs6XUZ0CwD6OclVIH
	X8Vgj+5Y+VckmjlfzmqxVMbeGgJ+wzWMAe146UZTRk474dSTnA/zE3KhGTSZ5lG+92U
	pyHAL8KnyMRcXdbaJEtneHFz5QwlNlLxzOIGC0lc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c23e67d-68b44684-ccae-4627-8127-62aa430f4cba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f30f93022212bf5a52419bb0313a561a99ad3ff57ca7d0e69f5b2b7dd872943d
Date: Sun, 24 Apr 2022 15:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650813298
