Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483E57EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660468252;
	h=To:Subject:From:Message-Id:Date;
	bh=bR0bZ+lOx+P31AYJSdUMY68h2rZBn2JhV8RiCG7oWwU=;
	b=H8nDuquYjULGTKmI7cjnFXJk/cEX4w65d64egduq/kFrU0aYzm4pr3kvLTfDJrNz
	9EdxK1Z+QVcMJbRmP6UNv5uRAtdG6zOz6QjYZVDaPT5Bq7gZx1UiKqoRWtjIubnVbHr
	5DpzSogvFRbyE+crN1dR978LlEEvAuK0V6PZVfV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660468252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bR0bZ+lOx+P31AYJSdUMY68h2rZBn2JhV8RiCG7oWwU=;
	b=ZY9PT5QzPMpnH27vQYgMsvHqqP+YB2Vm9PLGsqOdkIeOlNJKvr+0WuLy+08RePQm
	oonGoPnyttZLXA0Vxm/qIy6V81eki6BwRmMAAcBRv/FoWY2znd4pJ/wwRCdKInRAEKG
	UdYkWL9KFNmO+nOq5okQLgmp+QD7G6lMHYf8Ez5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b9ecf9a-543ad838-3312-4505-b4e3-65aaf5d27ecf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c235af500aebb3612a049ce358dfc750cee278121d0a0e5eeec9b31857a617a3
Date: Sun, 14 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660468252
