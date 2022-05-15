Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDC8363
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 07:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652600819;
	h=To:Subject:From:Message-Id:Date;
	bh=g5UoLl9MeV4feOy5Q+SQZv/91cy3TfW/ANw8XSJ+xkQ=;
	b=ZnI4lzASTgadEQuugQxYJZPY+uKnGhxRzxdyrM/8+sYKqFtZtrwSF2YfWv7PRM57
	uZKoAfSY0TUcZOoPUsaT7FV/mpGkb4twvIE9lw7oZE4hr1NfgazPwBLYK8FEGhhOSf+
	4JjdvZg9HGoGneVY3Xjb851Q8vfMaxpVa84y3u7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652600819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g5UoLl9MeV4feOy5Q+SQZv/91cy3TfW/ANw8XSJ+xkQ=;
	b=NF0jQM23IxWPPZzB0xSAUF1wpVXEhN8xd2nNoD8nv35HkbKvlFeHA6n9DbY3dnCA
	WO2O27v5KTicweB/WEneCcbxDMLjZX/GYnx+L02Yhua0RzSoVjCMCoz9B8nFcMzTtST
	n+5YWc4B9jWgnqmM+gmjvcohvVDlvdhkkJ2WA0dk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c6af4e79-aec6525e-819b-47f7-b596-5ad6cc47629c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 871d810f6126a06634b4b8d4c18cb6d3c1811352d8d837b749fc5b0aa738f386
Date: Sun, 15 May 2022 07:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652600819
