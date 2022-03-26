Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095253D61
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 19:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648321858;
	h=To:Subject:From:Message-Id:Date;
	bh=vIo69DudP3BuDYF21uH9N739FGYCr4uqEeEZp5TCjro=;
	b=BytgdwMtFqxRhZJHQhIDokslbxjAtfZTWH8M+FjVnkx+rQ84DMPJ/2GD8Zqj9w6Z
	4zy5FGGiqNeODmGDvwO0GcdgTISf7Vc44v8JjRFaVWpoUpd8MkOKL4OvEoQExQT72Ue
	pB18Bdg70M9fhwI1lBBU+K+f1gaNGIKfRqGX589c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648321858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vIo69DudP3BuDYF21uH9N739FGYCr4uqEeEZp5TCjro=;
	b=jOfGnqXBVliTphn1d0BJ1N7j/CIx2kmCaEeaye4i3O4DQoYP518URhTir+mJ551m
	wv8XnXQ03jIz2GooBDisQ46ia8rdo27ZXLTep0FCDPEBoqCwVbechQMxeoLrDJyr/Kp
	bmLtafWjy0kM005Jtbz2ZcjvN+zPWeOjTJDKC7jw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc7a38b50-6f401f7d-f6dc-4842-9a62-0b1c2d780f5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40bba0efa994bf39a1c2abe527aa7004f60d8648c5c42b28f2dc65ebba818b36
Date: Sat, 26 Mar 2022 19:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648321858
