Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2495C2F25
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 17:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652634179;
	h=To:Subject:From:Message-Id:Date;
	bh=13wZ0ozcKVTY7YbKK0GKs18RZHlq701qOZnXdMyEL0E=;
	b=hVUoWNCCYUSXZlXtj5Q7W8n+iveOF4WtTV1dnTbYuQ/uz8fHqf0u1mFXupbIo/ui
	3luM3W0Cj2BovODTRfE5kuTrCr4t9br3f/OcKT5Xa5nyxOWZPMzIROWHfB8NasKQo3l
	FDU1JF0Pot2sk5UqNSM9evFJlu2RhBhD0hK90VZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652634179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=13wZ0ozcKVTY7YbKK0GKs18RZHlq701qOZnXdMyEL0E=;
	b=aIHuGfODIDUA68antpL5HDwvG8Qhv66b/bldeN90gLNYrjwF/z5ZgawLQt2f/Shx
	Wk89M7Fs9oEY/RWLdDC/6TFaMjB416O8iS5cFHoM4YfXji3IqZhc1hu4NvPH9tYLt7N
	fCzG6rgnEcpPay0mQuzd2vwkFe1HEz0g7VQL+O/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c8ac570a-dc563c27-cebb-41c8-ae0f-c05b33357344-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc6b9bae19ad47f473090ed114367ae683e38b746ed1a0fcc9fbdf9278f4838b
Date: Sun, 15 May 2022 17:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652634179
