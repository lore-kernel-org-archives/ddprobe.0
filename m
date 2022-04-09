Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233427FA
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 10:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649498698;
	h=To:Subject:From:Message-Id:Date;
	bh=oKMwYk/O5EeB5ntLs03xdK4HsZS9/ehDAYYgAI5F2ZI=;
	b=Acixb2iQClfDtnr8HTcYwpuu3Dv/hts/WC/vzSKxwDisVAQg2V3yke9oglbKI9u3
	SrFB7PvUD/HxSN7qOTtAYz4V20jF1VcZJuzHdH+7PY57bDhXHmbISJNKh2vYEn9S4W1
	Wuoj40eQdD6w6U0VHoQJ0WvxEExyy2zhRfwl8eGw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649498698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oKMwYk/O5EeB5ntLs03xdK4HsZS9/ehDAYYgAI5F2ZI=;
	b=G2g37JtiE8riL4/Fk8ne0XCSHGAGGoNSj2Z/VQtCv/w6AsgiUUbMKZTlJaD++0WY
	9mM40a7Kbu/323BDnqMxIAhXHnGjjnn3vyW1elfWEcuErTcNH/D8pZ38EwZRKeSEW01
	uV6wfcWviP7N/BL4Ne7UUGW3WwYBmnNXD2g07FcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800dc8b21e-0db5a598-b721-46d5-a6d5-23728702abe5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db1e07b2907faeebcff21edc8764d79ff30ade0615b2a7931ad3daab845463d1
Date: Sat, 9 Apr 2022 10:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649498698
