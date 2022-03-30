Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEA6366
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 09:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648630918;
	h=To:Subject:From:Message-Id:Date;
	bh=IfiYiXJl//oxbkrMH2k7UG2z4i4agKWT9gEkbPwi/mk=;
	b=VjDGmstoF/EUexG1G2+l+GuA5uicBxgeyRbbZMABGH2xgWL57ZO6JlPRs5HtM6TL
	4zmiFcgorvYQX/9ey+AS563CSiQRzrAhzSzXrUj8bga4eH2JRIzMOSXSqguZ/P1+XfO
	SAlOilLkhMne+smMxGohKYn5loYaFAXSAwhjP+bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648630918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IfiYiXJl//oxbkrMH2k7UG2z4i4agKWT9gEkbPwi/mk=;
	b=d2lsJZP9ClhgqQ4gDAx1/r0ekhuLiePxD2ZyFy73iirRKJZmf2xtdrsl7HsLIVt3
	IKJo0FDKvSO0EcXBj0oXJpVgx5Q0WVLwYSHSGgfu4512rAvRv0DJSx1VgQDhMPRscDo
	jP1C2IqJ6ca5cOjTKvcrZH2g7yBp+lhvRDvzVQ1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fda0f6c7b-665a1b2b-0f5c-4d9a-98cb-56c2c77fe048-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7093c0e380c6b42854f53539fb8e07f48f13e5be6ed565b2e7630ff364165046
Date: Wed, 30 Mar 2022 09:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648630918
