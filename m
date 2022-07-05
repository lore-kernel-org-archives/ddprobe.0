Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141BE2F34
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657012012;
	h=To:Subject:From:Message-Id:Date;
	bh=rdpwkhuuE/tMsXbMMNX0lg2R6UjRQVxGVXhvQRVrUo0=;
	b=cUrjKiN8P2Tu9Tvs1XaKulWM61V7ZHD00h5r0tl4vXPDA2LekCveoOBfN8zb8LQ3
	hIqC7D+ZUKccKSGlf8cHGXzL1jZXpoArjpw7PRdKYW/PTzfXDo2JjpjapupqX5M7kou
	7VlK/K/KUX5hgaYHZqbCuJDRBHzJfrfgMWO3QjEE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657012012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rdpwkhuuE/tMsXbMMNX0lg2R6UjRQVxGVXhvQRVrUo0=;
	b=YLQkj7eds6gJHGWJlvihEa1em1zTeya7juJFZj4+ayuehz+n1YeV9MfjGcp+0a3D
	TfHN8OuD4Ozyo6DID6E9bXo21yngjMg8N/c9kzqt6fM8QAVxs5CrPRz6WJuyQhU2vdz
	i5wurkp733xrJQ6WihhdIiyeewxegH+lRJTHzdd4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd9cc4f1-767ca436-e05d-4b23-adab-c9cdd0501edc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e507faafd32ca31aa71b98801ce86f55c2c3269d22b0a60816a57238ebeeb79
Date: Tue, 5 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657012012
